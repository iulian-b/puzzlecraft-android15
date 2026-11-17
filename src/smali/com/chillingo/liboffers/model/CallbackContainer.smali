.class public Lcom/chillingo/liboffers/model/CallbackContainer;
.super Ljava/lang/Object;
.source "CallbackContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private reason:Ljava/lang/String;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->result:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->success:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    iget-object v0, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->reason:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->result:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 24
    .local p0, "this":Lcom/chillingo/liboffers/model/CallbackContainer;, "Lcom/chillingo/liboffers/model/CallbackContainer<TT;>;"
    iput-object p1, p0, Lcom/chillingo/liboffers/model/CallbackContainer;->success:Ljava/lang/Boolean;

    .line 25
    return-void
.end method
