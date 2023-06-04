from sklearn.svm import SVC
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from NLP_data import data
import random
import pickle

random.shuffle(data)
x = [i[0] for i in data]
y = [i[1] for i in data]
 
# # Creating training and test split
# x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=42)

# #TF-IDF vectorizer
# vectorizer = TfidfVectorizer()
# x_train = vectorizer.fit_transform(x_train)
# x_test = vectorizer.transform(x_test)
 
# # Training a SVM classifier using SVC class
# model = SVC()
# model.fit(x_train, y_train)
 
# # Mode performance
# y_pred = model.predict(x_test)

# print('Accuracy: %.3f' % accuracy_score(y_test, y_pred))

# #TF-IDF vectorizer
vectorizer = TfidfVectorizer()
x = vectorizer.fit_transform(x)

# Training a SVM classifier using SVC class
model = SVC()
model.fit(x, y)

y_pred = model.predict(x)
# print('Accuracy: %.3f' % accuracy_score(y, y_pred))

pickle.dump(model , open("NLP_Model.pickle","wb"))

def predict(text):
    model = pickle.load(open("NLP_Model.pickle","rb"))
    vectorized = vectorizer.transform([text])
    prediction = model.predict(vectorized)
    return prediction[0]