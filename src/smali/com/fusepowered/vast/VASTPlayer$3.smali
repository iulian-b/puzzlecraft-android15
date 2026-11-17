.class Lcom/fusepowered/vast/VASTPlayer$3;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/VASTPlayer;->sendError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/VASTPlayer;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/VASTPlayer;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/fusepowered/vast/VASTPlayer$3;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    iput p2, p0, Lcom/fusepowered/vast/VASTPlayer$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/vast/VASTPlayer$3;->this$0:Lcom/fusepowered/vast/VASTPlayer;

    iget-object v0, v0, Lcom/fusepowered/vast/VASTPlayer;->listener:Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;

    iget v1, p0, Lcom/fusepowered/vast/VASTPlayer$3;->val$error:I

    invoke-interface {v0, v1}, Lcom/fusepowered/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 181
    return-void
.end method
