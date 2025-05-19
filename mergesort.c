
void merge(int arr[], int l, int m, int r) {
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;
    int L[n1], R[n2];

    // Copiar os dados para os arrays L[] e R[] usando loops simples
    for (i = 0; i < n1; i++) L[i] = arr[l + i];
    for (j = 0; j < n2; j++) R[j] = arr[m + 1 + j];

    i = 0; j = 0; k = l;
    
    // Mesclar os dois arrays L[] e R[] de volta para o array arr[]
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) arr[k++] = L[i++];
        else arr[k++] = R[j++];
    }

    // Copiar os elementos restantes de L[], se houver
    while (i < n1) arr[k++] = L[i++];
    
    // Copiar os elementos restantes de R[], se houver
    while (j < n2) arr[k++] = R[j++];
}

void mergesort(int arr[], int l, int r) {
    if (l < r) {
        int m = l + (r - l) / 2;  // Evita overflow
        mergesort(arr, l, m);      // Ordena a primeira metade
        mergesort(arr, m + 1, r);  // Ordena a segunda metade
        merge(arr, l, m, r);       // Junta as duas metades
    }
}

int main(){

    int v[] = {23, 43, 49, 12,17, 14, 13, 34,  3, 22, 15, 27, 39,  1, 45, 44, 28, 21,  4, 42, 19, 36,  2, 35,  6, 18, 26, 48, 32, 41, 50, 20,  8,  5, 47, 16, 10, 38, 25, 33,  7, 31, 46, 24, 11,  9, 29, 37, 30, 40};

    mergesort(v,0,49);

    return 0;
}
