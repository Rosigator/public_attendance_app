//import { useSearchParams } from 'next/navigation';
import styles from './User.module.scss';

interface UserProps {
  params: {
    slug: string
  }
}

const User = ({ params }: UserProps) => {

  return (
    <main className={styles.User}>
      <div>
        {params.slug}
      </div>
    </main>
  )
}

export default User;
