# Image-Compression-using-K-Means-Clustering

## Description

This is a MATLAB code that compresses the colors of an image using K-means clustering. The compression is achieved by reducing the number of colors used in the image while preserving its visual quality. The output is a compressed image that uses a specified number of colors.

### Motivation
My motivation for building this project was to gain a better understanding of image processing techniques and algorithms for color compression. I was also interested in exploring K means clustering and visualizing data using scatter plots and subplots.

### Reason for building the project
I wanted to implement an algorithm for color compression using K-means clustering and demonstrate a proof of concept for a larger project that required image compression. I also wanted to share this code with others who may find it useful for their own projects.

### Problem it solves
This project solves the problem of reducing the number of colors used in an image while maintaining its visual quality. This is useful for compressing large images that may take a long time to load or display, or for reducing storage space required for storing images.

### What was learned
By building this project, I learned about how to implement the K-means clustering algorithm, and visualize data using scatter plots and subplots in MATLAB. I also gained a better understanding of the trade-offs between image quality and compression, and the importance of balancing these factors for different use cases.


## Usage

1.Ensure that you have MATLAB installed on your system.

2.Clone the repository and navigate to the directory containing the code.

3.Open MATLAB and run the script color_compression.m.

## Code Explanation

The script starts by reading in an image of a sparrow and converting it to a matrix X of size (339*509)x3. The matrix X is then plotted using a 3D scatter plot where the x, y and z axes represent the red, green and blue color channels respectively.

The script then performs K-means clustering on the matrix X with a specified number of clusters (k) and a number of replicates. The output of the clustering is a set of cluster centers (C) and an index vector (idx) indicating the cluster membership of each pixel in the image. The pixels are then mapped to their respective cluster centers to create a compressed version of the image.

Finally, the script plots the original and compressed image using a subplot. The first subplot shows the original 3D scatter plot, while the second subplot shows the compressed 3D scatter plot. The third and fourth subplots show the original and compressed images respectively.


