.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Lcom/customRobTop/BaseRobTopActivity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxActivity"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private hasWindowFocus_:Z

.field private mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field private mIsOnPause:Z

.field private mIsRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/customRobTop/BaseRobTopActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    .line 94
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 95
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 56
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final isAndroidEmulator()Z
    .locals 4

    .line 208
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 209
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "product="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "sdk"

    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "sdk_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmulator="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private pauseGame()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 90
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 91
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    return-void
.end method

.method private resumeGame()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    .line 84
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 85
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 10

    .line 169
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 172
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 179
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 189
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    const/16 v0, 0x91

    .line 196
    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setInputType(I)V

    .line 197
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 200
    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/customRobTop/BaseRobTopActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Landroid/content/Context;

    .line 67
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 69
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 71
    invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V

    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .line 204
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/customRobTop/BaseRobTopActivity;->onPause()V

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    .line 111
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->pauseGame()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/customRobTop/BaseRobTopActivity;->onResume()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    .line 101
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeGame()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/customRobTop/BaseRobTopActivity;->onWindowFocusChanged(Z)V

    .line 118
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->hasWindowFocus_:Z

    if-eqz p1, :cond_0

    .line 120
    iget-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsOnPause:Z

    if-nez p1, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeGame()V

    :cond_0
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 145
    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 9

    .line 152
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 153
    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
