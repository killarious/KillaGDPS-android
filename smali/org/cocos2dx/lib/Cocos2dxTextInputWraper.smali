.class public Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;
.super Ljava/lang/Object;
.source "Cocos2dxTextInputWraper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxTextInputWraper"


# instance fields
.field private final mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mOriginText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-void
.end method

.method private isFullScreenEdit()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->isFullScreenEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-gez v0, :cond_2

    .line 97
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 115
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 125
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditText;

    move-result-object p3

    if-ne p3, p1, :cond_3

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->isFullScreenEdit()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 127
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mOriginText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    if-lez p3, :cond_0

    .line 128
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "\n"

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0xa

    if-eq v0, p3, :cond_2

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_2
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p3, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    .line 156
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 157
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->closeIMEKeyboard()V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mOriginText:Ljava/lang/String;

    return-void
.end method
