cd lasagna
mkdir results
mkdir records
# python program.py <dataset> <column_index_of_score> <result_location> <id_for_embeddings: 0=onehot, 1=a_c, 2=a_{ph}, 3=[a_c,a_{ph}]> <hidden_dim> <epochs_per_fold>
CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../mtb/preprocessed/SKEMPI_all_dg_avg.txt -1 results/mtb_wvctc_rcnn_25.txt 3 25 200 0
CUDA_VISIBLE_DEVICES=0 python rcnn.py ../../../mtb/preprocessed/SKEMPI_all_dg_avg.txt -1 results/mtb_wvctc_rcnn_50.txt 3 50 200 0

