from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import mysql.connector as mariadb

app = Flask(__name__)

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql+pymysql://root:@localhost/dataquiz'
db= SQLAlchemy(app)
app.debug= True

class Guest(db.Model):
	__tablename__= 'guest'
	guest_id= db.Column('guest_id', db.Integer, primary_key= True)
	username=db.Column('username', db.String(10))
	age = db.Column('age', db.Integer)
	jeniskelamin= db.Column('jeniskelamin', db.String(20))
	kota= db.Column('kota' , db.String(30))
	
	def __repr__(self):
		return '<guest %r>' % self.username
		
		
class Question(db.Model):
	__tablename__='question'
	id_question= db.Column('id_question', db.Integer, primary_key=True)
	question=db.Column('question', db.String(150))
	answer= db.Column('answer', db.Integer)
	
	def __repr__(self):
		return '<Question %s> % self.question'