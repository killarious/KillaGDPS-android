.class Lcom/customRobTop/BaseRobTopActivity$4;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->tryShowRateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$4;->val$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    sget-object v0, Lcom/customRobTop/BaseRobTopActivity;->me:Lcom/customRobTop/BaseRobTopActivity;

    iget-object v1, p0, Lcom/customRobTop/BaseRobTopActivity$4;->val$appName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/customRobTop/AppRater;->tryShowRateDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
