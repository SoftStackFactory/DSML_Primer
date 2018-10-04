# Libraries
import pandas as pd
import seaborn as sns
# Matplotlib for visualization
from matplotlib import pyplot as plt

# Load real estate data from CSV
df = pd.read_csv('./Desktop/SSF/Machine-Learning-Masterclass-master/Project 2 Workbook Bundle/project_files/real_estate_data.csv')

# Calculate correlations between numeric features
correlations = df.corr()
correlations.to_csv('./Desktop/SSF/Machine-Learning-Masterclass-master/Project 2 Workbook Bundle/project_files/correlations.csv')
print(correlations)
