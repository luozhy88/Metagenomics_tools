#!/bin/bash
    #SBATCH --partition=batch
    #SBATCH --job-name=SRR1927149
    #SBATCH --ntasks=1                      
    #SBATCH --cpus-per-task=12            
    #SBATCH --time=128:00:00
    #SBATCH --mem=100G
    #SBATCH --output=%x.%j.out       
    #SBATCH --error=%x.%j.out        
    #SBATCH --mail-user=479321347@qq.com
    #SBATCH --mail-type=ALL
source activate kneaddata
kneaddata -i1 /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/test/raw/SRR1927149_1.fastq.gz -i2 /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/test/raw/SRR1927149_2.fastq.gz -db /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/db/hosts/human_db -o /data/zhiyu/data/software/Metagenomics_tools/cleaned/
conda deactivate
#!/bin/bash
    #SBATCH --partition=batch
    #SBATCH --job-name=SRR1929485
    #SBATCH --ntasks=1                      
    #SBATCH --cpus-per-task=12            
    #SBATCH --time=128:00:00
    #SBATCH --mem=100G
    #SBATCH --output=%x.%j.out       
    #SBATCH --error=%x.%j.out        
    #SBATCH --mail-user=479321347@qq.com
    #SBATCH --mail-type=ALL
source activate kneaddata
kneaddata -i1 /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/test/raw/SRR1929485_1.fastq.gz -i2 /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/test/raw/SRR1929485_2.fastq.gz -db /data/zhiyu/save_220T_user/zhiyu/Database/squeezemeta_databases161_29/db/hosts/human_db -o /data/zhiyu/data/software/Metagenomics_tools/cleaned/
conda deactivate
