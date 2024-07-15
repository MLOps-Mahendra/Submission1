# Submission 1: Machine Learning Pipeline - Speech Prediction
Nama: Mahendra Dwi Karunia Madjid

Username dicoding: mahendradwikm

| | Deskripsi |
| ----------- | ----------- |
| Dataset | [People Slurs Dataset](https://www.kaggle.com/datasets/sinatavakoli/people-slurs-dataset) |
| Issue | Setiap individu pernah menghadapi situasi tidak menyenangkan yang berasal dari orang lain, seperti mendapatkan komentar negatif atau cemoohan. Pengalaman-pengalaman semacam itu sering kali meninggalkan bekas yang dalam dalam ingatan setiap individu. Namun, dapatkah kita mengatakan bahwa setiap orang selalu mempertahankan ingatan akan pengalaman tersebut? |
| Solusi Machine Learning | Teknologi Machine Learning dapat digunakan untuk memprediksi apakah seseorang cenderung mengingat atau melupakan pengalaman negatif berdasarkan teks yang disediakan. |
| Metode Pengolahan | Dataset yang digunakan untuk prediksi Hate Speech terdiri dari dua fitur utama: "teks" yang berisi pengalaman pribadi setiap individu dan "recalled" sebagai label yang menunjukkan apakah pengalaman tersebut diingat atau tidak. Data dipecah menjadi data pelatihan (train) dan evaluasi (eval) dengan perbandingan 8:2. Selain itu, teks diubah menjadi huruf kecil dan label "recalled" dikonversi menjadi bilangan bulat untuk keperluan pemrosesan lebih lanjut. |
| Arsitektur Model | Model yang digunakan mengadopsi arsitektur embedding yang komprehensif. Pertama, terdapat lapisan vectorize_layer untuk mengubah teks menjadi vektor numerik, yang kemudian diubah menjadi embedding dengan dimensi 16. Selanjutnya, digunakan lapisan AveragePooling1D untuk mengurangi dimensi dan lapisan Dense dengan 64 dan 32 unit, masing-masing dengan fungsi aktivasi ReLU dan Sigmoid. Model menggunakan binary_crossentropy sebagai fungsi loss, optimizer Adam untuk penyetelan parameter, dan metrik evaluasi BinaryAccuracy untuk mengukur performa. |
| Metrik Evaluasi | Evaluasi model dilakukan dengan memanfaatkan berbagai metrik yang meliputi ExampleCount, AUC (Area Under Curve), FalsePositives, TruePositives, FalseNegatives, TrueNegatives, dan BinaryAccuracy. |
| Performa Model | Model yang dikembangkan berhasil mencapai tingkat akurasi biner sebesar 88% dengan nilai loss sebesar 0.3, menunjukkan bahwa model mampu memprediksi pengalaman yang diingat atau dilupakan berdasarkan teks yang dianalisis. |
