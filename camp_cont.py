import re
from pyspark import SparkContext

def main(committeeData):
    committeeData.map(lambda x: re.split(r'\t+', x)
    print(committeeData)