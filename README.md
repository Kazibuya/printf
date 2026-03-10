# ft_printf

> Réimplémentation de la fonction `printf` de la bibliothèque standard C.

![C](https://img.shields.io/badge/language-C-blue.svg)
![Norminette](https://img.shields.io/badge/style-Norminette-00BABC.svg)
![42](https://img.shields.io/badge/school-42-black.svg)

---

## 📋 Description

`ft_printf` est un projet du cursus **École 42** consistant à recoder la fonction `printf` de la libc.
L'objectif principal est de comprendre les **fonctions variadiques** en C (`stdarg.h`) et la gestion de l'affichage formaté.

```c
int ft_printf(const char *format, ...);
```

Retourne le nombre de caractères imprimés, comme la vraie `printf`.

---

## ⚙️ Spécificateurs de format supportés

| Spécificateur | Description                         |
|:---:|-------------------------------------|
| `%c` | Affiche un caractère                |
| `%s` | Affiche une chaîne de caractères    |
| `%p` | Affiche un pointeur en hexadécimal  |
| `%d` | Affiche un entier signé (base 10)   |
| `%i` | Affiche un entier signé (base 10)   |
| `%u` | Affiche un entier non signé         |
| `%x` | Affiche en hexadécimal minuscule    |
| `%X` | Affiche en hexadécimal majuscule    |
| `%%` | Affiche le caractère `%`            |

---

## 📁 Structure du projet

```
ft_printf/
├── ft_printf.c          # Fonction principale & parsing du format
├── ft_printf_utils.c    # Fonctions utilitaires (char, string, hex...)
├── ft_printf.h          # En-tête : prototypes et includes
└── Makefile             # Règles : all, clean, fclean, re
```

---

## 🚀 Compilation

### Générer la bibliothèque statique

```bash
make
```

Cela produit le fichier **`libftprintf.a`**.

### Règles du Makefile

```bash
make        # Compile la lib
make clean  # Supprime les .o
make fclean # Supprime les .o et libftprintf.a
make re     # fclean + all
```

---

## 🔧 Utilisation

Inclure `ft_printf.h` et linker avec `libftprintf.a` lors de la compilation :

```bash
gcc -Wall -Wextra -Werror main.c -L. -lftprintf -o mon_programme
```

Exemple de `main.c` :

```c
#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello, %s!\n", "42");
    ft_printf("Entier  : %d\n", 42);
    ft_printf("Hexa    : %x\n", 255);
    ft_printf("Pointeur: %p\n", &main);
    ft_printf("Pourcent: %%\n");
    return (0);
}
```

---

## 📊 Exemples de sortie

```
Hello, 42!
Entier  : 42
Hexa    : ff
Pointeur: 0x401136
Pourcent: %
```

---

## 📌 Contraintes du projet

- Compilé avec `gcc` et les flags : `-Wall -Wextra -Werror`
- Respect de la **Norme 42** (Norminette)
- Pas de variables globales
- Pas d'utilisation de `printf` ou des fonctions de `<stdio.h>`
- Le Makefile ne doit pas relinker inutilement

---

## ⚠️ Limitations

- Les **flags** (`+`, `-`, `#`, `0`, espace), la **largeur de champ** et la **précision** ne sont pas implémentés (partie bonus).
- Pas de modificateurs de longueur (`l`, `h`, `ll`...).

---

## 👤 Auteur

**Kazibuya** — [GitHub](https://github.com/Kazibuya)
