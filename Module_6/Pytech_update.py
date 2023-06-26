import pymongo
from pymongo import MongoClient
client = MongoClient("mongodb+srv://admin:admin@cluster0.lsm8cpk.mongodb.net/?retryWrites=true&w=majority")
db = client["pytech"]
collection = db["student"]

collection.update_one ({"_id":1007}, {"$set" : {"last Name": "Danger"}})
