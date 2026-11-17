.class Lcom/fusepowered/nx/gson/Gson$5;
.super Lcom/fusepowered/nx/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/gson/Gson;->longAdapter(Lcom/fusepowered/nx/gson/LongSerializationPolicy;)Lcom/fusepowered/nx/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/nx/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/gson/Gson;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/gson/Gson;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/fusepowered/nx/gson/Gson$5;->this$0:Lcom/fusepowered/nx/gson/Gson;

    invoke-direct {p0}, Lcom/fusepowered/nx/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2
    .param p1, "in"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->peek()Lcom/fusepowered/nx/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/nx/gson/stream/JsonToken;->NULL:Lcom/fusepowered/nx/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->nextNull()V

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fusepowered/nx/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/fusepowered/nx/gson/Gson$5;->read(Lcom/fusepowered/nx/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 1
    .param p1, "out"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    if-nez p2, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/nx/gson/stream/JsonWriter;

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/nx/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/fusepowered/nx/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/nx/gson/Gson$5;->write(Lcom/fusepowered/nx/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
