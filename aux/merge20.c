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

    int v[] = {1,2,4,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};

    mergesort(v,0,19);

    return 0;
}
