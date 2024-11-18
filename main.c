#include <stdio.h>
#include <stdlib.h>

void completa_histograma(char *h[], int valor, int cate) {
    for (int i = 0; i < valor; i++) {
        h[cate][i] = '*';  
    }
    h[cate][valor] = '\0';  
}

void imprime_histograma(char* h[], int valores[], int cate) {
    if (cate == 0) {  
        printf("vazio\n");
        return;
    }

    for (int i = 0; i < cate; i++) {
        printf("%d ", valores[i]);  
        for (int j = 0; j < valores[i]; j++) {
            printf("%c", h[i][j]); 
        }
        printf("\n");
    }
}

int main() {
    int cate;
    scanf("%d", &cate);  
    
    int valores[cate];
    char* histograma[cate];  

    for (int i = 0; i < cate; i++) {
        scanf("%d", &valores[i]); 
        
        if (valores[i] == 0) {
            histograma[i] = NULL;  
        } else {
            histograma[i] = (char*)malloc((valores[i] + 1) * sizeof(char));  
            completa_histograma(histograma, valores[i], i);  
        }
    }
    
    imprime_histograma(histograma, valores, cate);  
    
    
    for (int i = 0; i < cate; i++) {
        if (histograma[i] != NULL) {
            free(histograma[i]);
        }
    }

    return 0; 
}

