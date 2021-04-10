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
define( 'DB_NAME', 'myDb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'test' );

/** MySQL hostname */
define( 'DB_HOST', 'db' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '`u-,dN~Vpa3upgfklW?Lr>T]n$T6d&tXvt,iHV1E~zt UjHwI:@WDoZSY0mF;uOX' );
define( 'SECURE_AUTH_KEY',  'gF*q-tJJCCmUrAU=[j:l.oGsgyk=]Fi:Pk}(vfNKw)A7Fg^E3 A5TAup_6|U4d=/' );
define( 'LOGGED_IN_KEY',    'S_.wRY=^g!:4O?@$Y=z2C`Ug,;s*@k=Rl6KP,OUd<=o75$B(r]`y<~k/5 fm{&_+' );
define( 'NONCE_KEY',        'H[Zfe/bhcA8:zYP-~nG9_0AfgIZaiR+HG{InSa0:Y1qEou0Br}b|Zfc)[=,FI-qU' );
define( 'AUTH_SALT',        'zC%wterWCC1LG5_@Acm$Y3eRD,)PCLhUh:vMOwE*Q9$fp~F~cUTrO =-F{=2f&sa' );
define( 'SECURE_AUTH_SALT', 'S`u^1%Y>qXr-Fx)ujO[-.r}Ypf](mos99N7BHKNi959=ND>ZknhWAq)p;H.fslrN' );
define( 'LOGGED_IN_SALT',   'b5+hF?k/|RyD+m`ypdq3],U3{=[o(WlnL!X7mQ@4t4*|*!6m[-(!OO|KZ0C`rIOf' );
define( 'NONCE_SALT',       '}*z@13xi|eR?)^[<fdatB}ey|mvajU{nYD+oS<.UMpD`0XZxE%%a07pw q`N%f@ ' );

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
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
