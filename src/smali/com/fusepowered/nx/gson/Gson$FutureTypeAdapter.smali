.class Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;
.super Lcom/fusepowered/nx/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fusepowered/nx/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/nx/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 878
    .local p0, "this":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/nx/gson/TypeAdapter;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/fusepowered/nx/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lcom/fusepowered/nx/gson/TypeAdapter;, "Lcom/fusepowered/nx/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 885
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    .line 886
    return-void
.end method

.method public write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/nx/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    .local p0, "this":Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;, "Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/nx/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/nx/gson/TypeAdapter;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 900
    return-void
.end method
