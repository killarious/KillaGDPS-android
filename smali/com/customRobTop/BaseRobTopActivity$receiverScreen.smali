.class public Lcom/customRobTop/BaseRobTopActivity$receiverScreen;
.super Landroid/content/BroadcastReceiver;
.source "BaseRobTopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/customRobTop/BaseRobTopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "receiverScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/customRobTop/BaseRobTopActivity;


# direct methods
.method public constructor <init>(Lcom/customRobTop/BaseRobTopActivity;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string p1, "TAG"

    const-string v1, "ACTION_SCREEN_ON"

    .line 395
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$receiverScreen;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Lcom/customRobTop/BaseRobTopActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 398
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 400
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 402
    :cond_0
    sget-boolean p1, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    if-eqz p1, :cond_1

    .line 404
    invoke-static {}, Lcom/customRobTop/JniToCpp;->resumeSound()V

    .line 408
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 410
    sput-boolean p1, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 412
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 414
    sput-boolean v0, Lcom/customRobTop/BaseRobTopActivity;->shouldResumeSound_:Z

    .line 416
    sget-boolean p1, Lcom/customRobTop/BaseRobTopActivity;->isPaused_:Z

    if-nez p1, :cond_3

    .line 418
    invoke-static {}, Lcom/customRobTop/JniToCpp;->resumeSound()V

    :cond_3
    return-void
.end method
