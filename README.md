# PJATK WUM Project

## Autor: Mateusz Poniatowski

## Projekt końcowy na PJATK – WUM

Ten projekt polega na klasyfikacji obrazów MRI. Model MLP pełni rolę baseline, natomiast docelowym modelem jest konwolucyjna sieć neuronowa (CNN). Jest to problem klasyfikacyjny.

## Instrukcja uruchomienia

### 1. Pobranie modeli

Pobierz wytrenowane modele z Google Drive i wypakuj je do katalogu głównego projektu:

- **MLP (144 MB):** [Pobierz](https://drive.google.com/file/d/1h9s81b50dcruN5cyfPIBIbuo15Ibdw-n/view?usp=sharing)
- **CNN (74 MB):** [Pobierz](https://drive.google.com/file/d/13Uqtms0g2PqvIOZb1gx0rALKnuVcDmgW/view?usp=sharing)

> Jeśli nie pobierzesz modeli, będziesz musiał(a) wytrenować je samodzielnie, co może zająć trochę czasu.

### 2. Instalacja środowiska

```bash
python -m venv neural_net
source neural_net/bin/activate
pip install -r requirements.txt
```

### 3. Pobranie danych MRI

```bash
./get_data.sh
```

## Notatniki

- Eksploracja danych: `exploration.ipynb`
- Trening i ocena modeli:
  - MLP: `mlp_train.ipynb`
  - CNN: `cnn_train.ipynb`
- Sandbox (Google Colab): `laboratory_windows.ipynb`
- Sandbox (Linux): `laboratory.ipynb`