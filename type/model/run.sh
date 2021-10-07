cd lasagna
mkdir results
# python program.py <dataset> <column_index_of_label> <result_location> <id_for_embeddings: 0=onehot, 1=a_c, 2=a_{ph}, 3=[a_c,a_{ph}]> <hidden_dim> <epochs_per_fold>
CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../string/preprocessed_balanced/protein.actions.SHS27k.tsv 4 results/SHSs_wvctc_rcnn_25.txt 3 25 300
CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../string/preprocessed_balanced/protein.actions.SHS27k.tsv 4 results/SHSs_wvctc_rcnn_50.txt 3 50 300

CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../string/preprocessed_balanced/protein.actions.SHS148k.tsv 4 results/SHSl_wvctc_rcnn_25.txt 3 25 250
CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../string/preprocessed_balanced/protein.actions.SHS148k.tsv 4 results/SHSl_wvctc_rcnn_50.txt 3 50 250
