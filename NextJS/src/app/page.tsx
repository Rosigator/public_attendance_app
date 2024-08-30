import styles from "./Home.module.scss";
import Redis from 'ioredis';

// Configura la conexión a Redis
const redis = new Redis({
  host: 'localhost',  // Nombre del contenedor de Redis
  port: 6379,     // Puerto en el que Redis está escuchando
});

redis.on('connect', () => {
  console.log('Connected to Redis');
});

redis.on('error', (err) => {
  console.error('Redis connection error:', err);
});

// Realiza una prueba básica de PING
redis.ping((err, result) => {
  if (err) {
    console.error('PING error:', err);
  } else {
    console.log('PING result:', result);
  }
  redis.quit();
});

export default function Home() {
  return (
    <main className={styles.Home}>
      <h1>Tests</h1>
    </main>
  );
}
