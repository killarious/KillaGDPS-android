.class public Lorg/cocos2dx/lib/Cocos2dxETCLoader;
.super Ljava/lang/Object;
.source "Cocos2dxETCLoader.java"


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String; = "assets/"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Ljava/lang/String;)Z
    .locals 8

    .line 41
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "assets/"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    :cond_3
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    :goto_0
    invoke-static {v0}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create texture for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cocos2dx"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    const/4 p0, 0x1

    .line 78
    :try_start_1
    invoke-virtual {v2}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v0

    .line 79
    invoke-virtual {v2}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v3

    .line 80
    invoke-virtual {v2}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 82
    new-array v5, v4, [B

    .line 83
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 84
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v2}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 87
    invoke-static {v0, v3, v5, v4}, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->nativeSetTextureInfo(II[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "invoke native function error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return v1
.end method

.method private static native nativeSetTextureInfo(II[BI)V
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 104
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->context:Landroid/content/Context;

    return-void
.end method
