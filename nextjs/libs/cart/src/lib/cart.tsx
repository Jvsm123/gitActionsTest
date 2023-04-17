import styles from './cart.module.css';

import { Banner } from '@nextjs/shared/ui';
import NextLink from 'next/link';

/* eslint-disable-next-line */
export interface CartProps {}

export function Cart(props: CartProps) {
  return (
    <div className={styles['container']}>
      <Banner text="Welcome to the chart" />
      <NextLink href="/">Continue shop</NextLink>
    </div>
  );
}

export default Cart;
