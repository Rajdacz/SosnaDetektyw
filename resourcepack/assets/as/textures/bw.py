import os
from PIL import Image


def apply_grayscale_recursive_alpha(directory):
    """
    Recursively applies a grayscale filter (saturation 0) to all PNG files
    in the specified directory and its subdirectories, preserving the alpha channel.
    """
    for root, _, files in os.walk(directory):
        for file in files:
            if file.lower().endswith(".png"):
                file_path = os.path.join(root, file)
                try:
                    with Image.open(file_path) as img:
                        # Check if the image has an alpha channel
                        if img.mode == "RGBA":
                            # Convert to grayscale (mode 'LA' for Luminance with Alpha)
                            grayscale_img = img.convert("LA")
                        elif img.mode == "L":  # If already grayscale, skip
                            print(
                                f"Plik {file_path} jest już w skali szarości. Pomijam."
                            )
                            continue
                        else:
                            # Convert to grayscale without alpha if it didn't have it
                            grayscale_img = img.convert("L")

                        grayscale_img.save(file_path)
                        print(f"Przekonwertowano: {file_path}")
                except Exception as e:
                    print(f"Błąd podczas przetwarzania pliku {file_path}: {e}")
    print(
        "\nGotowe! Wszystkie PNG-i powinny być czarno-białe z zachowaną alfą (jeśli miały)."
    )


if __name__ == "__main__":
    # Zmień 'moja_sciezka_do_katalogu' na ścieżkę do katalogu,
    # w którym są twoje pliki PNG.
    # Możesz użyć '.' aby wskazać bieżący katalog, gdzie uruchamiasz skrypt.
    target_directory = "./item"  # Zmień to na np. '/home/user/Obrazy'

    if not os.path.isdir(target_directory):
        print(f"Błąd: Katalog '{target_directory}' nie istnieje.")
    else:
        print(f"Zaczynam przetwarzanie plików PNG w '{target_directory}'...")
        apply_grayscale_recursive_alpha(target_directory)
