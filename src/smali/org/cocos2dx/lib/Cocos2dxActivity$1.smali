.class Lorg/cocos2dx/lib/Cocos2dxActivity$1;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsAudioFocus:Z

    .line 80
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$000()Lorg/cocos2dx/lib/Cocos2dxMusic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-boolean v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsAudioFocus:Z

    .line 84
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$000()Lorg/cocos2dx/lib/Cocos2dxMusic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 85
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$200(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$100(Lorg/cocos2dx/lib/Cocos2dxActivity;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-boolean v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsAudioFocus:Z

    .line 89
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$000()Lorg/cocos2dx/lib/Cocos2dxMusic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-boolean v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mIsAudioFocus:Z

    .line 93
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$000()Lorg/cocos2dx/lib/Cocos2dxMusic;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
