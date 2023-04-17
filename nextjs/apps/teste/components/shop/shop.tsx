import styles from './shop.module.css';

import { Banner } from '@nextjs/shared/ui';
import NextLink from 'next/link';

/* eslint-disable-next-line */
export interface ShopProps {}

export function Shop(props: ShopProps) {
  return (
    <div className={styles['container']}>
      <Banner text="Here is a list of products to buy..." />
      <NextLink href="/cart">View cart</NextLink>
    </div>
  );
}

export default Shop;
