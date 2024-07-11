# Face Points detector

Project for a semi-automatic system to detect certain anatomical elements of a face from an image or video sequence using MATLAB. The elements to be detected are specified manually as key points in reference images and are subsequently tracked in a video sequence. This project was done for the subject VC (Computer Vision) at FIB - UPC Barcelona. <br><br>

## Objectives
The main goals of this project are:
- To allow the user to select the anatomical points of a face.
- To build a feature descriptor tailored to the problem.
- To implement a matching function for these feature points.
- To track the selected points in a video.

## Project Structure
- `src/`: Contains the main code files.
  - `tracking.mlx`: The main script for tracking the key points.
  - `calculate_features.m`: Script to calculate feature vectors for the selected points.
  - `calculate_match.m`: Script to perform matching of the points in the video.
- `data/`: Contains the sample images to select the points, and the videos for the tracking.
- `results/`: Contains tracking results withs images and videos (that are speed up).
- `arnau_claramunt_short_project.pdf`: Contains the project report.

## Functionalities
1. **Manual Selection of Key Points**: Allows the user to manually select key points on the first frame of the video or a reference image.
2. **Feature Descriptor**: Extracts feature vectors for the selected points. The feature extraction method includes:
   - HSV color components for the points and their immediate neighbors.
   - Histogram of Oriented Gradients (HOG) for a more robust description.
3. **Matching Function**: Matches the points in subsequent frames using a custom matching algorithm that finds similar points within a specified window.
4. **Tracking**: Tracks the points across the video frames and marks them.
5. **Evaluation**: Tests the system on various images and videos, documenting the accuracy and any issues encountered.
6. **Result Visualization**: Shows the results of the point tracking on test images and video sequences.

## Usage
1. **Initial Setup**:
   - Ensure MATLAB is installed on your system.
   - Clone the repository and navigate to the `src/` directory.

2. **Running the Code**:
   - Open `tracking.mlx` in MATLAB.
   - Set the `select_points_on_first_frame` boolean to `true` if you want to select points on the first frame of the video or `false` to use a reference image.
   - Run the script to start the tracking process.

3. **Customizing Feature Extraction**:
   - Modify `calculate_features.m` to adjust the feature extraction process.

4. **Testing and Evaluation**:
   - Use images and videos from `data/` to evaluate the system.
   - Check the `results/` directory for output results and videos demonstrating the tracking. <br><br>

## Report
The `arnau_claramunt_short_project.pdf` file contains a detailed project report which includes:
- A detailed explanation of the feature extraction method.
- Results obtained from the test images.
- Description of the functions implemented.
- Issues encountered and solutions.
- An annex with all the code used.


<br><br>

---
## Screenshots

![Screenshot from 2024-06-14 18-02-10](https://github.com/ArnauCS03/face-points-detector/assets/95536223/a9983f89-0bc4-4502-933f-7c1fa4908d2a)

![Screenshot from 2024-06-14 18-09-27](https://github.com/ArnauCS03/face-points-detector/assets/95536223/6d82bfd9-1c32-4632-8e94-a5fd5e7789e9)

![Screenshot from 2024-06-14 18-17-10](https://github.com/ArnauCS03/face-points-detector/assets/95536223/9f8ef9cc-e28c-4fba-a2a5-7be18711e146)

![Screenshot from 2024-06-14 18-17-25](https://github.com/ArnauCS03/face-points-detector/assets/95536223/11cf4218-74b5-4ed9-b980-934406264ae0)

![Screenshot from 2024-06-14 18-18-01](https://github.com/ArnauCS03/face-points-detector/assets/95536223/edc72dd1-8532-40c8-9206-f54f6910b46c)

![Screenshot from 2024-06-15 17-39-24](https://github.com/ArnauCS03/face-points-detector/assets/95536223/b160d704-e8fe-448e-b17e-9697e9949320)

![Screenshot from 2024-06-15 17-39-51](https://github.com/ArnauCS03/face-points-detector/assets/95536223/cc129da6-ee59-4f69-a20b-2a9ddc8290fc)

![Screenshot from 2024-06-15 17-40-29](https://github.com/ArnauCS03/face-points-detector/assets/95536223/d76b694c-5862-443b-a09f-dd9c3ec9e3fa)

![Screenshot from 2024-06-16 01-24-44](https://github.com/ArnauCS03/face-points-detector/assets/95536223/a2f6d2bd-6ef4-482e-909d-e5aaeefb0d52)

![Screenshot from 2024-06-16 01-25-06](https://github.com/ArnauCS03/face-points-detector/assets/95536223/68c13717-d761-4d85-bf8c-b284ae735431)

![Screenshot from 2024-06-16 01-25-48](https://github.com/ArnauCS03/face-points-detector/assets/95536223/7979bc59-6970-4a17-bf62-8d0d2d657b17)

<br><br>
### Tracking in videos:

https://github.com/ArnauCS03/face-points-detector/assets/95536223/6f05c298-0082-4af2-93eb-be56207f2b7c

https://github.com/ArnauCS03/face-points-detector/assets/95536223/82d784a6-0715-4ce4-adc6-3b8c96a2f46c


https://github.com/ArnauCS03/face-points-detector/assets/95536223/e80374cc-befb-406c-8087-5f7f3afd0051



<br><br>
