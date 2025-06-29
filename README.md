# NewsApp - iOS приложение для чтения новостей

## Описание проекта
Это новостное приложение для iPhone, которое я создал, чтобы попрактиковаться в работе с сетью и использованием SwiftUI. Тут показываются новости с заголовками, описаниями и картинками.
## Основные возможности
- Загрузка и отображение новостей из внешнего API.
- Асинхронная подгрузка изображений с плавной анимацией.
- Переход к детальному просмотру статьи с отображением заголовка, описания, изображения и даты публикации.
- Обновление ленты новостей по свайпу вниз.
- Асинхронная загрузка картинок с отображением плейсхолдеров.

## Технологии и инструменты
- Swift - основной язык программирования приложения.
- SwiftUI - фреймворк для создания пользовательского интерфейса.
- Combine - для обработки асинхронных потоков данных.
- URLSession - для сетевых запросов к новостному API.
- JSONDecoder - для преобразования JSON-данных в объекты Swift.
- Xcode - интегрированная среда разработки для iOS.

## Использование
1. Получите API ключ на [NewsAPI.org](https://newsapi.org/)
2. Замените значение в `URLConstants` на свой API ключ:
    ```swift
    static let topNewsURL = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ВАШ_API_КЛЮЧ"
    static let bottomNewsURL = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ВАШ_API_КЛЮЧ"
    ```
3. Соберите и запустите проект в Xcode на симуляторе или устройстве.

## Демонстрация

![](Previews.gif)


