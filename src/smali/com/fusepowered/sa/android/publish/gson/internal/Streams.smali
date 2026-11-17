.class public final Lcom/fusepowered/sa/android/publish/gson/internal/Streams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/gson/internal/Streams$1;,
        Lcom/fusepowered/sa/android/publish/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->peek()Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;

    const/4 v1, 0x0

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fusepowered/sa/android/publish/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;->INSTANCE:Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/fusepowered/sa/android/publish/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static write(Lcom/fusepowered/sa/android/publish/gson/JsonElement;Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/sa/android/publish/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/fusepowered/sa/android/publish/gson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_0
.end method
