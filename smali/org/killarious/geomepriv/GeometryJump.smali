.class public Lorg/killarious/geomepriv/GeometryJump;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GeometryJump.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fmod"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "cocos2dcpp"

    .line 69
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgRyoIFy3izJ9+RBfum3Fvc6iiuk6TFst1yaPUUaThzD/6wlHwCDjVjnoDaqL29HE3j2VQpv5rmdSvDZXayxa1861//Ca3p3aDvlvcxZwyN6Fe51patKofmVNp9DhofDcsMNLLAfJMqihwgRCBHToi2B3xrstd+233UCgzz4oMg1cClfuSHn1YF7clksIrjuTrlBq1fmn3Km4E7S90ghyzL0KxT7gr1dyQdu8IuK++psnvv4wKybsKyuGm6fLk/X20TRJObi2Y8CRv4Zf9gWxSndR8sevQ1tOhQp1VQWWZqhks9r4DwPclEl2Ox0kREs4wR9zFdaWodFb1eKG3oNmPwIDAQAB"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 41
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 8

    .line 53
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, v7

    .line 55
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    return-object v7
.end method

.method protected onDestroy()V
    .locals 0

    .line 62
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 63
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    return-void
.end method
