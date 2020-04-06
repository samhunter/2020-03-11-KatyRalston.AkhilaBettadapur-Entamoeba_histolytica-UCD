hts_Stats -L ./01-dedup/B6-FC_stats.log -1 ./00-RawData/B6-FC_S6_L001_R1_001.fastq.gz -2 ./00-RawData/B6-FC_S6_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B6-FC_stats.log | hts_Stats -AL ./01-dedup/B6-FC_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C5-LibC2_stats.log -1 ./00-RawData/C5-LibC2_S17_L001_R1_001.fastq.gz -2 ./00-RawData/C5-LibC2_S17_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C5-LibC2_stats.log | hts_Stats -AL ./01-dedup/C5-LibC2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F2_LibB1-2_stats.log -1 ./00-RawData/F2_LibB1-2_S6_L001_R1_001.fastq.gz -2 ./00-RawData/F2_LibB1-2_S6_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F2_LibB1-2_stats.log | hts_Stats -AL ./01-dedup/F2_LibB1-2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/Undetermined_stats.log -1 ./00-RawData/Undetermined_S0_L001_R1_001.fastq.gz -2 ./00-RawData/Undetermined_S0_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/Undetermined_stats.log | hts_Stats -AL ./01-dedup/Undetermined_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C6-LibC2_stats.log -1 ./00-RawData/C6-LibC2_S18_L001_R1_001.fastq.gz -2 ./00-RawData/C6-LibC2_S18_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C6-LibC2_stats.log | hts_Stats -AL ./01-dedup/C6-LibC2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B8-F18c_stats.log -1 ./00-RawData/B8-F18c_S8_L001_R1_001.fastq.gz -2 ./00-RawData/B8-F18c_S8_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B8-F18c_stats.log | hts_Stats -AL ./01-dedup/B8-F18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B1-FA_stats.log -1 ./00-RawData/B1-FA_S1_L001_R1_001.fastq.gz -2 ./00-RawData/B1-FA_S1_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B1-FA_stats.log | hts_Stats -AL ./01-dedup/B1-FA_stats.log > /dev/null 
hts_Stats -L ./01-dedup/gLibA-A6_stats.log -1 ./00-RawData/gLibA-A6_S2_L001_R1_001.fastq.gz -2 ./00-RawData/gLibA-A6_S2_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/gLibA-A6_stats.log | hts_Stats -AL ./01-dedup/gLibA-A6_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C7-LibC3_stats.log -1 ./00-RawData/C7-LibC3_S19_L001_R1_001.fastq.gz -2 ./00-RawData/C7-LibC3_S19_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C7-LibC3_stats.log | hts_Stats -AL ./01-dedup/C7-LibC3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C4-LibC2_stats.log -1 ./00-RawData/C4-LibC2_S16_L001_R1_001.fastq.gz -2 ./00-RawData/C4-LibC2_S16_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C4-LibC2_stats.log | hts_Stats -AL ./01-dedup/C4-LibC2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B11-Lib18c_stats.log -1 ./00-RawData/B11-Lib18c_S11_L001_R1_001.fastq.gz -2 ./00-RawData/B11-Lib18c_S11_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B11-Lib18c_stats.log | hts_Stats -AL ./01-dedup/B11-Lib18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B9-F18c_stats.log -1 ./00-RawData/B9-F18c_S9_L001_R1_001.fastq.gz -2 ./00-RawData/B9-F18c_S9_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B9-F18c_stats.log | hts_Stats -AL ./01-dedup/B9-F18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C3-LibC1_stats.log -1 ./00-RawData/C3-LibC1_S15_L001_R1_001.fastq.gz -2 ./00-RawData/C3-LibC1_S15_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C3-LibC1_stats.log | hts_Stats -AL ./01-dedup/C3-LibC1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/D11_FB-2_stats.log -1 ./00-RawData/D11_FB-2_S3_L001_R1_001.fastq.gz -2 ./00-RawData/D11_FB-2_S3_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/D11_FB-2_stats.log | hts_Stats -AL ./01-dedup/D11_FB-2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/D10_FB-1_stats.log -1 ./00-RawData/D10_FB-1_S2_L001_R1_001.fastq.gz -2 ./00-RawData/D10_FB-1_S2_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/D10_FB-1_stats.log | hts_Stats -AL ./01-dedup/D10_FB-1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B10-Lib18c_stats.log -1 ./00-RawData/B10-Lib18c_S10_L001_R1_001.fastq.gz -2 ./00-RawData/B10-Lib18c_S10_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B10-Lib18c_stats.log | hts_Stats -AL ./01-dedup/B10-Lib18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C2-LibC2_stats.log -1 ./00-RawData/C2-LibC2_S14_L001_R1_001.fastq.gz -2 ./00-RawData/C2-LibC2_S14_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C2-LibC2_stats.log | hts_Stats -AL ./01-dedup/C2-LibC2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F7_LibB3-1_stats.log -1 ./00-RawData/F7_LibB3-1_S11_L001_R1_001.fastq.gz -2 ./00-RawData/F7_LibB3-1_S11_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F7_LibB3-1_stats.log | hts_Stats -AL ./01-dedup/F7_LibB3-1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F9_LibB3-3_stats.log -1 ./00-RawData/F9_LibB3-3_S13_L001_R1_001.fastq.gz -2 ./00-RawData/F9_LibB3-3_S13_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F9_LibB3-3_stats.log | hts_Stats -AL ./01-dedup/F9_LibB3-3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/gLibA-A5_stats.log -1 ./00-RawData/gLibA-A5_S1_L001_R1_001.fastq.gz -2 ./00-RawData/gLibA-A5_S1_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/gLibA-A5_stats.log | hts_Stats -AL ./01-dedup/gLibA-A5_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B5-FC_stats.log -1 ./00-RawData/B5-FC_S5_L001_R1_001.fastq.gz -2 ./00-RawData/B5-FC_S5_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B5-FC_stats.log | hts_Stats -AL ./01-dedup/B5-FC_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F6_LibB2-3_stats.log -1 ./00-RawData/F6_LibB2-3_S10_L001_R1_001.fastq.gz -2 ./00-RawData/F6_LibB2-3_S10_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F6_LibB2-3_stats.log | hts_Stats -AL ./01-dedup/F6_LibB2-3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F1_LibB1-1_stats.log -1 ./00-RawData/F1_LibB1-1_S5_L001_R1_001.fastq.gz -2 ./00-RawData/F1_LibB1-1_S5_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F1_LibB1-1_stats.log | hts_Stats -AL ./01-dedup/F1_LibB1-1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F11_LibB4-2_stats.log -1 ./00-RawData/F11_LibB4-2_S15_L001_R1_001.fastq.gz -2 ./00-RawData/F11_LibB4-2_S15_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F11_LibB4-2_stats.log | hts_Stats -AL ./01-dedup/F11_LibB4-2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F10_LibB4-1_stats.log -1 ./00-RawData/F10_LibB4-1_S14_L001_R1_001.fastq.gz -2 ./00-RawData/F10_LibB4-1_S14_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F10_LibB4-1_stats.log | hts_Stats -AL ./01-dedup/F10_LibB4-1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B2-FA_stats.log -1 ./00-RawData/B2-FA_S2_L001_R1_001.fastq.gz -2 ./00-RawData/B2-FA_S2_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B2-FA_stats.log | hts_Stats -AL ./01-dedup/B2-FA_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F8_LibB3-2_stats.log -1 ./00-RawData/F8_LibB3-2_S12_L001_R1_001.fastq.gz -2 ./00-RawData/F8_LibB3-2_S12_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F8_LibB3-2_stats.log | hts_Stats -AL ./01-dedup/F8_LibB3-2_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C1-LibC1_stats.log -1 ./00-RawData/C1-LibC1_S13_L001_R1_001.fastq.gz -2 ./00-RawData/C1-LibC1_S13_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C1-LibC1_stats.log | hts_Stats -AL ./01-dedup/C1-LibC1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B7-F18c_stats.log -1 ./00-RawData/B7-F18c_S7_L001_R1_001.fastq.gz -2 ./00-RawData/B7-F18c_S7_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B7-F18c_stats.log | hts_Stats -AL ./01-dedup/B7-F18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/D12_FB-3_stats.log -1 ./00-RawData/D12_FB-3_S4_L001_R1_001.fastq.gz -2 ./00-RawData/D12_FB-3_S4_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/D12_FB-3_stats.log | hts_Stats -AL ./01-dedup/D12_FB-3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B12-Lib18c_stats.log -1 ./00-RawData/B12-Lib18c_S12_L001_R1_001.fastq.gz -2 ./00-RawData/B12-Lib18c_S12_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B12-Lib18c_stats.log | hts_Stats -AL ./01-dedup/B12-Lib18c_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F4_LibB2-1_stats.log -1 ./00-RawData/F4_LibB2-1_S8_L001_R1_001.fastq.gz -2 ./00-RawData/F4_LibB2-1_S8_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F4_LibB2-1_stats.log | hts_Stats -AL ./01-dedup/F4_LibB2-1_stats.log > /dev/null 
hts_Stats -L ./01-dedup/gLibA-A7_stats.log -1 ./00-RawData/gLibA-A7_S3_L001_R1_001.fastq.gz -2 ./00-RawData/gLibA-A7_S3_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/gLibA-A7_stats.log | hts_Stats -AL ./01-dedup/gLibA-A7_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B3-FA_stats.log -1 ./00-RawData/B3-FA_S3_L001_R1_001.fastq.gz -2 ./00-RawData/B3-FA_S3_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B3-FA_stats.log | hts_Stats -AL ./01-dedup/B3-FA_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C9-LibC3_stats.log -1 ./00-RawData/C9-LibC3_S21_L001_R1_001.fastq.gz -2 ./00-RawData/C9-LibC3_S21_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C9-LibC3_stats.log | hts_Stats -AL ./01-dedup/C9-LibC3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F3_LibB1-3_stats.log -1 ./00-RawData/F3_LibB1-3_S7_L001_R1_001.fastq.gz -2 ./00-RawData/F3_LibB1-3_S7_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F3_LibB1-3_stats.log | hts_Stats -AL ./01-dedup/F3_LibB1-3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F12_LibB4-3_stats.log -1 ./00-RawData/F12_LibB4-3_S16_L001_R1_001.fastq.gz -2 ./00-RawData/F12_LibB4-3_S16_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F12_LibB4-3_stats.log | hts_Stats -AL ./01-dedup/F12_LibB4-3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/B4-FC_stats.log -1 ./00-RawData/B4-FC_S4_L001_R1_001.fastq.gz -2 ./00-RawData/B4-FC_S4_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/B4-FC_stats.log | hts_Stats -AL ./01-dedup/B4-FC_stats.log > /dev/null 
hts_Stats -L ./01-dedup/C8-LibC3_stats.log -1 ./00-RawData/C8-LibC3_S20_L001_R1_001.fastq.gz -2 ./00-RawData/C8-LibC3_S20_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/C8-LibC3_stats.log | hts_Stats -AL ./01-dedup/C8-LibC3_stats.log > /dev/null 
hts_Stats -L ./01-dedup/F5_LibB2-2_stats.log -1 ./00-RawData/F5_LibB2-2_S9_L001_R1_001.fastq.gz -2 ./00-RawData/F5_LibB2-2_S9_L001_R2_001.fastq.gz | hts_SuperDeduper -e 10000 -AL ./01-dedup/F5_LibB2-2_stats.log | hts_Stats -AL ./01-dedup/F5_LibB2-2_stats.log > /dev/null 
