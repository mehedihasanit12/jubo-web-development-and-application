<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf275700a84e4fdf57f51d9cff5a7e6f5
{
    public static $files = array (
        '5ce2ecaf475a28632981ad0d02836b74' => __DIR__ . '/../..' . '/app/helpers/helpers.php',
    );

    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf275700a84e4fdf57f51d9cff5a7e6f5::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf275700a84e4fdf57f51d9cff5a7e6f5::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf275700a84e4fdf57f51d9cff5a7e6f5::$classMap;

        }, null, ClassLoader::class);
    }
}
