
The plan:

- Check for unnecessary columns
- Check for duplicates
- Check for missing values
- Check for outliers
- Check for consistency in categorical columns
- Encode categorical columns
- Export to csv


1. First, I looked in the dataset to see if there was any column that I would not need. Since Department column only contains one department, I removed this column. 

2. Then I checked for the duplicates and the dataset does not include any duplicates.

3. Then I wanted to see if there were any missing values and observed that there were 2 values missing in the birth year column and 2 values missing in the profession column. I then filled in these rows with the mode of those columns.

4. Then I wanted to see if there were outliers and looked at the statistics again. The standard deviation of the column Amount was very high and then I looked at the quartiles, I saw that there is a big difference between 75% and max values. To see the change in the stats I removed the row with the max Amount and saw that without this value the standard deviation was reasonable. 

Also, standard deviation of the column Birth Year is big and looking at the data, it seems like there are a couple of very old people which might be the real case and a couple of children with professions other than student. I thought birth year might be entered wrong and did not remover these data. 

5. I checked the value counts of the categorical columns. Column risk seemed OK. Column Profession had some values lowercase, some capital so I made them consistent with capitalise. Then there were entries Etudient and Student, I changed these to Student.

Finally, I applied LabelEncoder to encode the categorical data.





