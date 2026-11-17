.class Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$1;
.super Ljava/lang/Object;
.source "VideoInterstitialStrategy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->buildInterstitialPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy$1;->this$0:Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;->access$000(Lcom/fusepowered/as/strategy/VideoInterstitialStrategy;)V

    .line 92
    return-void
.end method
