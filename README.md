# Parasite density estimation using the improved yolov5 model 



This guideline describes the procedures applied to implement a system for estimating malaria parasite density on thin blood smear images using the enhanced yolov5 object detector.

#### A total of 2747 images were used in this study. These images were divided as follows:
1798 for the training set, 449 for the validation set and a maximum of 500 images for the five slides we diagnosed using our model.	

## Image preprocessing
In the Preprocessing.ipynb file, we present the pre-processing method, which consists of cropping the images by taking them one by one from a source folder and storing them in the destination folder.


## Image labelling
The annotation was carried out using a freely accessible online tool called MakeSense.ai.

## Training the improved yolov5
The training of improved yolov5 was performed with the supercomputer by adopting the following procedure:





- The model and all data are stored in the main folder (Modyolov5).
- We had installed all the necessary packages using the requirements.txt file 

    pip3 install -r requirements.txt

- We configured the p2.slurm file to train the model and stored the results in the out.txt file.
- Model training is launched with the command :

    sbatch p2.slurm

## Applying the trained model to estimate parasite density

After training, we used the trained model to estimate parasite density.
The file EstimationOfParasiteDensity.ipynb contains the implementation of the parasite density estimation system using the improved trained model.

To estimate the parasite density of a slide, this system is connected to the folder containing all the images of that slide, which it examines one by one to detect and count the malaria parasites and white blood cells present on each image, then uses the parasite density calculation formula to give the final result.
