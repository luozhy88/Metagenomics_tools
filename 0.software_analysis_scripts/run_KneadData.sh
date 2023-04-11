#!/bin/bash
#SBATCH --partition=batch
#SBATCH --job-name=kneaddata_clean
#SBATCH --ntasks=1                      
#SBATCH --cpus-per-task=12            
#SBATCH --time=128:00:00
#SBATCH --mem=100G
#SBATCH --output=%x.%j.out       
#SBATCH --error=%x.%j.out        
#SBATCH --mail-user=rx32940@uga.edu
#SBATCH --mail-type=ALL 

DB="/data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/db/hosts/Homo_sapiens.GRCh38.dna_rm.primary_assembly.fa.gz"
INPUT="/data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/test/raw"
OUTPUT="/data/zhiyu/data/software/Metagenomics_tools-main/cleaned"



# build kneaddata database for host to filter out
# bowtie2-build $DB/rattus_human.fasta $DB/rattus_human_db
#for file in $INPUT/*;do
#    sample=$(basename $file)
#    echo $sample
#done


for file in $INPUT/*;do
    sample=$(basename $file)
    echo $sample
    echo "#!/bin/bash
    #SBATCH --partition=batch
    #SBATCH --job-name=$sample
    #SBATCH --ntasks=1                      
    #SBATCH --cpus-per-task=12            
    #SBATCH --time=128:00:00
    #SBATCH --mem=100G
    #SBATCH --output=%x.%j.out       
    #SBATCH --error=%x.%j.out        
    #SBATCH --mail-user=479321347@qq.com
    #SBATCH --mail-type=ALL" > sub.sh

    echo "source activate kneaddata" >> sub.sh
    echo "kneaddata --i $INPUT/$sample/${sample}_1.fastq --i $INPUT/$sample/${sample}_2.fastq -db $DB -o $OUTPUT/" >> sub.sh
    echo "conda deactivate" >> sub.sh 
#
#sbatch sub.sh ) &
#
#wait
done


