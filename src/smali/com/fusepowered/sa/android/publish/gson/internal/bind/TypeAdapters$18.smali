.class final Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$18;
.super Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$18;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/net/URL;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->peek()Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;->NULL:Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextNull()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$18;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/net/URL;)V

    return-void
.end method

.method public write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/net/URL;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
