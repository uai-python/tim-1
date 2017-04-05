from flask import Flask, render_template, redirect, request, session, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func
from data import Question, Guest


app= Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql+pymysql://root:180597@localhost/dataquiz'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db= SQLAlchemy(app)
app.debug= True


		
@app.route('/', methods=['GET','POST'])
def home():
	if 'username' in session:
			fetch_data = Question.query.order_by(func.rand()).limit(1).all()
			username= session['username']
			return render_template('quiz.html', data=fetch_data)
	else:
			return redirect(url_for("send"))


app.secret_key = 'okeoke'

@app.route('/daftar', methods=['GET','POST'])
def send():
	if request.method == 'POST':
		session['username'] = request.form['username']
		guest = Guest(request.form['username'], request.form['age'], request.form['jeniskelamin'], request.form['kotaota'])
		db.session.add(guest)
		db.session.commit()
		
		
		return redirect(url_for("home"))
	
	else:
		return render_template('index.html')

@app.route('/result', methods= ['GET', 'POST'])
def result():
	return render_template('result.html')
		
@app.route('/check', methods=['GET', 'POST'])
def check():
    if request.method == 'POST':
	    jawaban= request.form['answer']
	
    return render_template('quiz.html')
	
@app.route('/logout')
def out():
	session.pop('username',None)
	return redirect(url_for('index'))

@app.errorhandler(404)
def Error(error):
	return 'Page not found', 404
	
if __name__ == '__main__':
	app.run()
