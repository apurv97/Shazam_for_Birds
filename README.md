# Shazam_for_Birds
# CS 386 Term Project
## Team 05: Apurv Varshney, Gaurav Ganna & Pratyay Gaikwad
									
Packages used:
	1. librosa - for audio processing of wav files and to visualize spectrograms
	2. pydub - to convert mp3 file3 to lossless wav format
	3. thinkdsp - Digital Signal Processing library containing functionality for filtering and making spectograms
	4. matplotlib - to plot our results and visualize data better
	6. scipy - to load wav files in our program
	7. hmmlearn & sklearn - used to build and learn our HMM model

Folder Description:
	xeno_canto_mp3 - contains the original mp3 files downloaded from xeno-canto website
	wav_files_32bitDepth - contains the wav files produced through conversion from mp3
	wav_files_8bitDepth - contains the wav files produced after reducing bit rate sample from 32 to 8.Also contains all extracted features.
	trained - contains the .npy arrays needed to learn our model
	testing - contains the testing files to test our model

File Description and the hierarchy in which programs should be executed:
	1. convert_mp3_wav.ipynb - for converting original mp3 files to lossless wav format
	2. spectrogram.ipynb - to visualize the data as spectrograms
	3. convertBitDepth_32_8.sh - to reduce the bit rate of our wav files from 32 to 8
	4. preprocess.ipynb - to apply noise reduction, produce spectrograms and and extract features from the spectrograms
	5. preprocess_with_noise.ipynb - basic pre-processing of wav files to produce spectrograms without any noise reduction
	5. HMM_TrainingandEvaluation.ipynb - notebook file to build and learn our HMM model. Also used for evaluating our model and calculating accuracy
	6. accuracy_graph.ipynb - to visualize accuracy of different models

To open any .ipynb(notebook) file:
	1.Open a terminal/command line in the directory
	2.use command "jupyter notebook" to open a browser client
	3.Open the notebook in the browser.

example 1:
	1. Run preprocess_with_noise.ipynb on wav_files_32bitDepth data.
	3. Run HMM_TrainingandEvaluation.ipynb next
	3. expected output of accuracy - [2,4,3,4,4,4,5,4,3,4,4,4,4,5,5,4,5,5]
	4. max accuracy for this data less than 50%.

example 2:
	1. Run preprocess.ipynb on wav_files_8bitDepth data.
	3. Run HMM_TrainingandEvaluation.ipynb next
	3. expected output of accuracy - [6,6,7,9,8,9,9,9,10,9,9,9,9,9,10,11,9,8]
	4. max accuracy for this data is 78%.
