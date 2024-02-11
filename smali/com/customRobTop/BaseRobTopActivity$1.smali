.class Lcom/customRobTop/BaseRobTopActivity$1;
.super Ljava/lang/Object;
.source "BaseRobTopActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/BaseRobTopActivity;->setupMainWindowDisplayMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/customRobTop/BaseRobTopActivity;


# direct methods
.method constructor <init>(Lcom/customRobTop/BaseRobTopActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$1;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/customRobTop/BaseRobTopActivity$1;->this$0:Lcom/customRobTop/BaseRobTopActivity;

    invoke-static {p1}, Lcom/customRobTop/BaseRobTopActivity;->access$000(Lcom/customRobTop/BaseRobTopActivity;)Landroid/view/View;

    :cond_0
    return-void
.end method
