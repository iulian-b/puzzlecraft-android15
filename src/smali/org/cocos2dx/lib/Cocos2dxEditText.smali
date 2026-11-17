.class public Lorg/cocos2dx/lib/Cocos2dxEditText;
.super Landroid/widget/EditText;
.source "Cocos2dxEditText.java"


# instance fields
.field private mView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 60
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditText;->mView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 67
    .local v0, "audio":Landroid/media/AudioManager;
    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 68
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 75
    :cond_1
    :goto_0
    return v3

    .line 70
    :cond_2
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 71
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_0
.end method

.method public setMainView(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0
    .param p1, "glSurfaceView"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditText;->mView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 52
    return-void
.end method
