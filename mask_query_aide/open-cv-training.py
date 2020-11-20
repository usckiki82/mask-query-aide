import cv2 as cv
import sys
import numpy as np
import os

print("cv version:", cv.__version__)

# Read / Write Images
img = cv.imread("..\data\samples\data\starry_night.jpg")
if img is None:
    sys.exit("Could not read the image.")
cv.imshow("Display window", img)
k = cv.waitKey(0)
if k == ord("s"):
    cv.imwrite("..\output\starry_night.png", img)
    print("saved image")

# Erosion
kernel = np.ones((5, 5), np.uint8)
erosion = cv.erode(img, kernel, iterations=1)
cv.imshow("Display window - Erosion", erosion)
# k = cv.waitKey(0)

# Dilation
dilation = cv.dilate(img, kernel, iterations=1)
cv.imshow("Display window - Dilation", dilation)
# k = cv.waitKey(0)

# Opening
opening = cv.morphologyEx(img, cv.MORPH_OPEN, kernel)
cv.imshow("Display window - Opening", opening)
# k = cv.waitKey(0)

# Closing
closing = cv.morphologyEx(img, cv.MORPH_CLOSE, kernel)
cv.imshow("Display window - Closing", closing)
# k = cv.waitKey(0)

# Morphological Gradient
gradient = cv.morphologyEx(img, cv.MORPH_GRADIENT, kernel)
cv.imshow("Display window - Gradient", gradient)
# k = cv.waitKey(0)

# Top Hat
tophat = cv.morphologyEx(img, cv.MORPH_TOPHAT, kernel)
cv.imshow("Display window - Top Hat", tophat)
# k = cv.waitKey(0)

# Black Hat
blackhat = cv.morphologyEx(img, cv.MORPH_BLACKHAT, kernel)
cv.imshow("Display window - Black Hat", blackhat)
k = cv.waitKey(0)

# Playing Video
cap = cv.VideoCapture('..\data\samples\data\\vtest.avi')
while cap.isOpened():
    ret, frame = cap.read()
    # if frame is read correctly ret is True
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    cv.imshow('frame', gray)
    if cv.waitKey(1) == ord('q'):
        break
cap.release()
cv.destroyAllWindows()

# Save video
cap = cv.VideoCapture(0)
# Define the codec and create VideoWriter object
fourcc = cv.VideoWriter_fourcc(*'XVID')
out = cv.VideoWriter('..\output\output.avi', fourcc, 20.0, (640,  480))
if not cap.isOpened():
    print("Cannot open camera")
    exit()
while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("Can't receive frame (stream end?). Exiting ...")
        break
    frame = cv.flip(frame, 0)
    frame = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    # Display the resulting frame
    cv.imshow('frame', frame)
    # write the flipped frame
    out.write(frame)
    cv.imshow('frame', frame)
    if cv.waitKey(1) == ord('q'):
        break
# Release everything if job is finished
cap.release()
out.release()
cv.destroyAllWindows()