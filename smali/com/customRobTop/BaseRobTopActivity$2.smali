.class Lcom/customRobTop/BaseRobTopActivity$2;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->onToggleKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 259
    sget-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->keyboardActive_:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->openIMEKeyboard()V

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->closeIMEKeyboard()V

    :goto_0
    return-void
.end method
