


# Tworzenie chmury słów za pomocą pakietu wordcloud
install.packages("wordcloud")
library(wordcloud)
install.packages("qdap")
library(qdap)


# Wczytaj dane tekstowe
# Wczytaj plik tekstowy z lokalnego dysku
text <- readLines(file.choose(),encoding = "UFT-8")
text

frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)

# Utwórz chmurę słów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ)

# Opcje chmury słów
?wordcloud
# Zmiana wartości min.freq i max.words w celu wyświetlenia mniejszej/większej liczby słów.
# min.freq: słowa o częstości poniżej tej wartości nie będą wyświetlane
# max.words: maksymalna liczba słów do wyświetlenia



# Ograniczenie liczby słów w chmurze poprzez określenie minimalnej częstości
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4)

# Ograniczenie liczby słów w chmurze poprzez określenie maksymalnej liczby słów
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5)


# Dodanie różnych palet kolorystycznych
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(9,"Greens"))


# Optymalizacja i dostosowanie wyników
# Dodanie koloru do chmury słów dla lepszej wizualizacji
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))
# Dodanie koloru
wordcloud(frequent_terms$WORD, frequent_terms$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))
?brewer.pal
brewer.pal.info


# Najpopularniejsze słowa w 2024:
# 1. president
# 2. american
# 3. future

# Najpopularniejsze słowa w 2021: 
# 1. american
# 2. jobs
# 3. plan
# 4. americans



















