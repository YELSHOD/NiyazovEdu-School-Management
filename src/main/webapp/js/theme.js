function toggleTheme(theme) {
    const darkThemeLink = document.getElementById('dark-theme');
    const lightThemeLink = document.getElementById('light-theme');

    if (theme === 'dark') {
        darkThemeLink.disabled = false;
        lightThemeLink.disabled = true;
    } else if (theme === 'light') {
        darkThemeLink.disabled = true;
        lightThemeLink.disabled = false;
    }
}
