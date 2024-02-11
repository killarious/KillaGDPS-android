.class public Lcom/customRobTop/DefaultRobTopActivity;
.super Landroid/app/Activity;
.source "DefaultRobTopActivity.java"


# static fields
.field private static me:Lcom/customRobTop/DefaultRobTopActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isBillingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static purchaseItem(Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAP Purchase item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IAP"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static restorePurchases()V
    .locals 0

    return-void
.end method


# virtual methods
.method public doRestoreCheck()V
    .locals 0

    return-void
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sput-object p0, Lcom/customRobTop/DefaultRobTopActivity;->me:Lcom/customRobTop/DefaultRobTopActivity;

    return-void
.end method

.method public updateOwnedItems()V
    .locals 0

    return-void
.end method
