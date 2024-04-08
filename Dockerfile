# Используем официальный образ OpenJDK для Java 11
FROM amazoncorretto:17.0.1

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем JAR файл Java приложения в контейнер
COPY target/therapist-0.0.1-SNAPSHOT.jar /app/therapist-0.0.1-SNAPSHOT.jar

# Определяем порт, который приложение будет использовать
EXPOSE 8000

# Команда для запуска Java приложения
CMD ["java", "-jar", "therapist-0.0.1-SNAPSHOT.jar"]