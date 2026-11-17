.class Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;
.super Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/Gson;
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
        "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    return-void
.end method

.method public write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/Gson$FutureTypeAdapter;->delegate:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
