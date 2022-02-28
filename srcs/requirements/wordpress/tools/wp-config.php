<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '$WORDPRESS_DB_NAME' );

/** MySQL database username */
define( 'DB_USER', '$WORDPRESS_DB_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', 'WORDPRESS_DB_PSSWD' );

/** MySQL hostname */
define( 'DB_HOST', 'WORDPRESS_DB_HOST' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'H)P4Ynw0lu^:ARa#4(*MW@BmrqI||n$Pktr:8(Eoz *j63ed<#n &-v4fycP5fhO');
define('SECURE_AUTH_KEY',  ')1,*Jst72nzoMIZ-s-0O9$Ijh>/iOxMQyDKHqG1i]?N]aeG4ReLgsrYY<p:x!G,T');
define('LOGGED_IN_KEY',    '(|w]GCIU-5[K%~[S`&e>e #.[k+z9~R[Bnnv4L#Hq-B2n!&1LMQCPI[7h{n+qU=[');
define('NONCE_KEY',        't)+G)t*Cmh_0+R%2q.paN/R~jULH%nak`tgR=WDci6(OeE4R5y5k6&w*fr)({u|#');
define('AUTH_SALT',        '+w9a!|,|c/}BYN+w$lfrSDMceeY$1mU[pm+~hmH*~&,3,i8>s]J#!;?B|.%yu`i0');
define('SECURE_AUTH_SALT', '@-HE1*hWY/7v6T`y&$Nb}bTN_[?r9b:1<oU-YCs%HFknhioD[}p~MQuFk2y-l%5?');
define('LOGGED_IN_SALT',   '6:z |8tgFEEmW]YNWu`4^a]~HE,-$rW+Wq5|4G[xFI7+)XfOn]Hfy||G220=!:00');
define('NONCE_SALT',       'vTjPV:E|L}zT<H|T8K*O$-/uo^?H+1m;}#>R|+h->y/hUY-LE>`#/Lu/EOTm$-{q');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
