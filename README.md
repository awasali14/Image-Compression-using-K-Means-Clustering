# Image Compression Using K-means Clustering

## Overview

This repository hosts a MATLAB project that demonstrates the application of K-means clustering for image compression. The project utilizes K-means to reduce the number of colors in an image, thereby compressing the image with minimal perceptible loss in quality.

## Project Description

The aim of this project was to explore the effectiveness of K-means clustering in reducing the data size of images by segmenting the color space into a specified number of clusters. The project serves as an investigation into practical applications of machine learning algorithms in digital image processing.

### Problem Solved

The project addresses the challenge of high storage and bandwidth requirements for high-quality images. By reducing the number of unique colors in an image, the project demonstrates how to achieve significant reductions in image file size while maintaining visual fidelity.

### Learnings

Throughout the development, insights were gained into:
- The mechanics of K-means clustering and its application in quantizing color spaces.
- Image manipulation and processing using MATLAB's image processing capabilities.
- Visualization techniques for color data in three-dimensional space.

## Setup

### Prerequisites

- MATLAB



## Data

The input data for this project is a high-resolution image, 'sparrow.jpg', which is then processed to extract color data and compress the number of colors.

## Methodology

The script performs the following steps:
1. **Image Reading:** Loads an image into an array.
2. **Color Extraction and Reshaping:** Converts the image into a two-dimensional array where each row represents a color (RGB).
3. **3D Scatter Plot:** Visualizes the original color distribution in three-dimensional space.
4. **K-means Clustering:** Applies K-means clustering to reduce the number of unique colors.
5. **Color Mapping and Compression:** Maps original colors to the nearest cluster centroid to compress the image.
6. **Visualization:** Compares the original and compressed images and their color distributions.

## Results

The results include:
- A 3D scatter plot showing the original and compressed color spaces.
- Display of the original and compressed images side by side.
- Calculation and display of the compression size as a percentage of the original.

## Repository Structure

- `README.md`: This file.
- `sparrow.jpg`: Sample image used for compression.
- `image_compression_script.m`: MATLAB script performing the compression.
