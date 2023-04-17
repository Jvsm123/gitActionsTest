import styles from './banner.module.css';

/* eslint-disable-next-line */
export interface BannerProps {
  text: string;
}

export function Banner(props: BannerProps) {
  return (
    <div className={styles['container']}>
      <h1>{props.text}</h1>
    </div>
  );
}

export default Banner;
