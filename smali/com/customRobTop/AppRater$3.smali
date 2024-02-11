.class Lcom/customRobTop/AppRater$3;
.super Ljava/lang/Object;
.source "AppRater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/customRobTop/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Landroid/content/Context;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/customRobTop/AppRater$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v0, "dontshowagain"

    .line 66
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object p1, p0, Lcom/customRobTop/AppRater$3;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/customRobTop/AppRater$3;->val$mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/customRobTop/AppRater;->openRate(Landroid/content/Context;)V

    return-void
.end method
