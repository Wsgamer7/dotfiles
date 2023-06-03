def gene_pro(s_num):
    print('"# Prologue",')
    totalOffset = (s_num + 2) * 4
    print('"addi sp, sp, {0}",'.format(-totalOffset))
    print('"sw ra, 0(sp)",')
    for i in range(s_num + 1):
        offset = (1 + i) * 4
        print('"sw s{0}, {1}(sp)",'.format(i, offset))

def gene_epi(s_num):
    print('"# Epilogue",')
    print('"lw ra, 0(sp)",')
    for i in range(s_num + 1):
        offset = (1 + i) * 4
        print('"lw s{0}, {1}(sp)",'.format(i, offset))
    totalOffset = (s_num + 2) * 4
    print('"addi sp, sp, {0}",'.format(totalOffset))

