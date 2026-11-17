.class final Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;
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
        "Lcom/fusepowered/sa/android/publish/gson/JsonElement;",
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
.method public read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 3

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$startapp$android$publish$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->peek()Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;

    new-instance v2, Lcom/fusepowered/sa/android/publish/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v1}, Lcom/fusepowered/sa/android/publish/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextNull()V

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;->INSTANCE:Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonArray;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonArray;-><init>()V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/gson/JsonArray;->add(Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonObject;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/gson/JsonObject;->add(Ljava/lang/String;Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;->endObject()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->getAsJsonPrimitive()Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->value(Z)Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->beginArray()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->getAsJsonArray()Lcom/fusepowered/sa/android/publish/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->endArray()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->beginObject()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;->getAsJsonObject()Lcom/fusepowered/sa/android/publish/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;->endObject()Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/fusepowered/sa/android/publish/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$25;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Lcom/fusepowered/sa/android/publish/gson/JsonElement;)V

    return-void
.end method
