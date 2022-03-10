#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Mar 10 10:49:48 2022

@author: ildem
"""

#%%
import pandas as pd
import numpy as np

transactions=pd.read_csv('/Users/ildem/Downloads/example_data_cleaning.csv')

#See what is in the dataset.
transactions.describe()

transactions.head()

#Drop the department column as it contains only one department.
transactions1=transactions.drop(["Department"], axis=1)

#Check for duplicates
transactions1.duplicated()

#Check if there are any missing values.
transactions1.isnull().sum()

#Fill in the missing values with the mode of each column. 
transactions1['BirthYear'].fillna(transactions1['BirthYear'].mode()[0], inplace=True)

transactions1['Profession'].fillna(transactions1['Profession'].mode()[0], inplace=True)

#Check for the outliers.
transactions1.describe()

#Max value is too far from the 75 percentile, remove the row and save in a new dataframe.
transactions2=transactions1.loc[transactions1['Amount']!=transactions1['Amount'].max()]

transactions2.describe()

#Look at the categorical data to see if they are consistent
transactions2['Risk'].value_counts()

transactions2['Profession'].value_counts()

#Lower-uppercase values, unify everything with capitalize
transactions2['Profession']=transactions2['Profession'].str.capitalize()

#Etudient inserted instead of Student, replace it with Student
transactions2['Profession'].replace('Etudient', 'Student', inplace=True )

#Encode columns Profession and Risk
from sklearn.preprocessing import LabelEncoder

enc=LabelEncoder()

transactions2['Profession']=enc.fit_transform(transactions2['Profession'])
transactions2['Risk']=enc.fit_transform(transactions2['Risk'])

transactions2.to_csv('~/Desktop/Lab_33_Intro-to-Data-Preparation/Data_cleaning.csv')

