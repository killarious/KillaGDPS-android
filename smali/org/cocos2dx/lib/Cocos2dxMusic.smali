.class public Lorg/cocos2dx/lib/Cocos2dxMusic;
.super Ljava/lang/Object;
.source "Cocos2dxMusic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxMusic"


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mLeftVolume:F

.field private mPaused:Z

.field private mRightVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method private createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 7

    .line 251
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    const-string v0, "/"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 263
    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 265
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    invoke-virtual {v6, p1, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v6, 0x0

    .line 268
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v6
.end method

.method private initData()V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 236
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 237
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    .line 240
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 209
    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method public getBackgroundMusicTime()F
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundVolume()F
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 214
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public pauseBackgroundMusic()V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 105
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    .line 109
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_3

    .line 110
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string p2, "playBackgroundMusic: background media player is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 115
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 118
    :try_start_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 119
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 120
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 122
    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string p2, "playBackgroundMusic: error state"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mCurrentPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 159
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 160
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 162
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string v1, "rewindBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBackgroundMusicTime(F)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 175
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 176
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxMusic;->TAG:Ljava/lang/String;

    const-string v0, "rewindBackgroundMusic: error state"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBackgroundVolume(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 229
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mLeftVolume:F

    .line 230
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->mPaused:Z

    :cond_0
    return-void
.end method
